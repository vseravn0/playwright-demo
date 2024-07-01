case "$1" in
    "up")
        docker compose up -d
    ;;
    "rebuild")
        docker compose up -d --build
    ;;
    "down")
        docker compose down
    ;;
    "start")
        docker compose exec app sh -c 'npx vite --port=5170 --no-open'
    ;;
    "build")
        docker compose exec app sh -c 'npm run build'
    ;;
    "lint")
        docker compose exec app sh -c 'npm run lint'
    ;;
    "serve")
        docker compose exec app sh -c 'npx serve -s -n dist -p 5175'
    ;;
    "serve:build")
        docker compose exec app sh -c 'npm run build && npx serve -s -n dist -p 5175'
    ;;
    "test")
        docker compose exec e2e bash -c 'npx playwright test'
    ;;
    "report")
        docker compose exec e2e bash -c 'npx playwright show-report --host 0.0.0.0'
    ;;
    "quick")
        docker compose up -d &&
        docker compose exec app sh -c 'npm i' &&
        docker compose exec app sh -c 'npx vite --port=5170 --no-open'
    ;; 
esac