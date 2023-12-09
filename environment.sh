apt install php-mbstring -y
cp .env.example .env
composer install
php artisan key:generate

# Run mysql
cd .devcontainer/db && docker-compose up -d && cd ../..
sleep 3
php artisan migrate:fresh --seed