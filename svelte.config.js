import path from "path";
import preprocess from 'svelte-preprocess';
import node from '@sveltejs/adapter-node';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	preprocess: preprocess(),

	kit: {
		adapter: node(),
		vite: {
			resolve: {
				alias: {
					$static: path.resolve("./static"),
					$layout: path.resolve("./src/layout")
				}
			}
		},
		target: '#svelte'
	}
};

export default config;
