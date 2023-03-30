async (page) => {
  // Go to the url passed to the command line (see below)
  await page.goto("/", { waitUntil : "domcontentloaded" });
  await page.waitForTimeout(1000);
  await page.scrollToEnd();
  await page.waitForTimeout(1000);
};