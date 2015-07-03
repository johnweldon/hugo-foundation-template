
server {
    listen              80;
    server_name         example.com;

    access_log          /var/log/nginx/example.com-access.log;
    error_log           /var/log/nginx/example.com-error.log;

    root                /var/local/websites/example.com/public/;

    index               index.html index.htm;
    error_page          404 /404.html;

    location / {
        expires         -1;
        add_header      Pragma          "no-cache";
        add_header      Cache-Control   "no-store, no-cache, must-revalidate, post-check=0, pre-check=0";
        try_files       $uri $uri/index.html $uri/ =404;
    }

    location = /apple-touch-icon.png { return 204; access_log off; log_not_found off; }
    location = /apple-touch-icon-precomposed.png { return 204; access_log off; log_not_found off; }
}

