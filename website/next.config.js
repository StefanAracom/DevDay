/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,

  images: {
    domains: ['static.metacritic.com'],
    deviceSizes: [320, 480, 768, 1024, 1200],
  },
}

module.exports = nextConfig
