FROM node:18-alpine AS base

FROM base AS deps
RUN apk add --no-cache libc6-compat
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

FROM base AS runner
WORKDIR /app
RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nodejs
COPY --from=deps /app/node_modules ./node_modules
COPY . .
USER node
EXPOSE 3000
ENV PORT 3000
CMD ["npm", "run", "start"]
