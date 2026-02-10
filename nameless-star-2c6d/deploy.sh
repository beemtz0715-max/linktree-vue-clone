#!/bin/bash
# deploy.sh — build + deploy with embedded Cloudflare API token

# 1️⃣ Embed your Cloudflare API token
export CLOUDFLARE_API_TOKEN="CUik1fTQZ9_kxMoD8uCG5ZUM5XRMFpbdG_2Hy0Vx"

# 2️⃣ Remove old Wrangler configs
rm -rf .wrangler dist/wrangler.json

# 3️⃣ Build Vue project
echo "💻 Building Vue project..."
npm run build || { echo "❌ Build failed"; exit 1; }

# 4️⃣ Deploy with Wrangler
echo "🚀 Deploying to Cloudflare..."
npx wrangler deploy || { echo "❌ Deploy failed"; exit 1; }

echo "✅ Deployment complete!"

