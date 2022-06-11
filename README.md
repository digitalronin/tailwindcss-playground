# Tailwind CSS Playground

Minimal project to enable playing with tailwindcss.

Based on:
- https://github.com/tailwindlabs/tailwindcss-from-zero-to-production
- https://www.youtube.com/watch?v=qYgogv4R8zg

...but updated for TailwindCSS v3

The project should have as few dependencies as possible, and should support hot
reloading to make developing tailwindcss UI examples as painless as possible.

## Usage

```
make server
```

The rendered `index.html` should be viewable at `http://localhost:3000`, and
any changes to the file should show up almost immediately.

> Sometimes tailwindcss changes don't seem to work - the utility class seems to
> be missing in the rendered output. I think this is due to a race condition
> between `vite` and the `tailwindcss-cli` process. Saving the changed file
> again usually fixes this.

To stop the server, run `make stop` in a separate terminal window.
