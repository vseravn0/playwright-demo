import { test, expect} from '@playwright/test';
import 'dotenv/config'

test.beforeEach(async ({ page }) => {
  await page.goto(`http://${process.env.E2E_TEST_URL}:${process.env.E2E_PORT}`);
});


test.describe('New Todo', () => {
  test('should allow me to add todo items', async ({ page }) => {
    await expect(page).toHaveTitle('Vite + React + TS')
  })
});
