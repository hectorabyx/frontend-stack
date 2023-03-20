#!bash
FROM alpine

SHELL [ "yarn create vite" ]
SHELL [ "yarn add three @react-three/fiber @react-three/drei @theatre/core @theatre/r3f @theatre/studio" ]
SHELL [ "yarn add -D @types/react @types/three" ]
SHELL [ "yarn add -D tailwindcss postcss autoprefixer" ]
SHELL [ "npx tailwindcss init"]
SHELL [ "echo 'module.exports = {plugins: {tailwindcss: {},autoprefixer: {},},};' > postcss.config.cjs"]
SHELL [ "[ -f ./src/index.css ] && rm ./src/index.css; echo '@tailwind base; @tailwind components; @tailwind utilities;' > ./src/index.css"]
SHELL [ "yarn build" ]

