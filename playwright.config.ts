import { defineConfig, devices } from '@playwright/test';
import 'dotenv/config';
export default defineConfig({
  testDir: './e2e',
  fullyParallel: true,
  reporter: [['html', { host: '0.0.0.0' }]],
  use: {
    trace: 'on-first-retry',
    ignoreHTTPSErrors: true,
  },
  projects: [
    {
      name: 'chromium',
      use: { ...devices['Desktop Chrome']},
    },
  ],
  webServer: {
    command: `vite --port ${process.env.E2E_PORT}`,
    url: `http://${process.env.E2E_TEST_URL}:${process.env.E2E_PORT}`,
    reuseExistingServer: true,
    timeout: 120 * 1000,
  }
});
