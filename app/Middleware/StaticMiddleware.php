<?php

namespace app\Middleware;

use Psr\Http\Message\RequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;

class StaticMiddleware
{
    protected $publicPath;

    public function __construct($publicPath)
    {
        $this->publicPath = $publicPath;
    }

    public function __invoke(Request $request, Response $response, $next)
    {
        $uri = $request->getUri()->getPath();

        if (strpos($uri, '/images/') === 0) {
            $path = $this->publicPath . $uri;
            if (file_exists($path) && is_readable($path)) {
                $response = $response->withHeader('Content-Type', mime_content_type($path));
                $response->getBody()->write(file_get_contents($path));
                return $response;
            }
        }

        return $next($request, $response);
    }
}
