import { globPlugin } from 'esbuild-plugin-glob';
import esbuild from "esbuild";

esbuild.build({
  entryPoints: ['./app/javascript/*.*'],
  bundle: true,
  sourcemap: true,
  outdir: './app/assets/builds',
  plugins: [globPlugin()],
});
