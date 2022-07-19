import { globPlugin } from 'esbuild-plugin-glob';
import esbuild from "esbuild";

const cliArgs = process.argv.slice(2);
const watch = cliArgs.includes('--watch');

esbuild.build({
  entryPoints: ['./app/javascript/*.*'],
  bundle: true,
  sourcemap: true,
  watch,
  outdir: './app/assets/builds',
  plugins: [globPlugin()],
});
