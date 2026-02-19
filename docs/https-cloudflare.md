# HTTPS with Cloudflare (DNS-01)

Requirements:

- Domain name
- Cloudflare DNS
- API Token with DNS Edit permission

Create API token in Cloudflare dashboard.

Add token to environment:

CLOUDFLARE_API_TOKEN=your_token_here
LESSON_HOSTNAME=lesson.yourdomain.com

Start:

./up.sh --web

Certificates are issued automatically using DNS validation.
