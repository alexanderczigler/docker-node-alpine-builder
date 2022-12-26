# Node.js Alpine builder

Alpine based Node.js image with build essentials

When using multi-layered builds, this image is handy for the build/compile step.

```Dockerfile
FROM alexanderczigler/node-alpine-builder AS builder

# Run npm install
RUN npm install --production

# Do your thing(s) here

FROM node:16-alpine AS runner

# Copy output files from builder (only stuff needed for running your code)
...

CMD node index.js

```
