### ☁️ Launch in Github Codespace

<br>

[GitHub Codespaces](https://github.com/features/codespaces) can be used to run DVWA without a local environment and offers up to 60 hours/month for free!

<br>

**Time estimate:** 5 minutes

<br>

To launch DVWA in a GitHub Codespace, follow these steps:
1. Fork this repository into your account or org.
2. Click the **Code** green drop down button in the upper-right of your repo navbar.
3. Click the **Create codespace on master** button.
4. In the codespace terminal, run these 2 commands. 

   ```sh
   cp config/config.inc.php.dist config/config.inc.php
   ```

   ```sh
   docker compose up -d
   ```

5. Click **Open in Browser** button to open your fresh DVWA in a new tab.
6. Log in with admin account.
7. In the **Setup** page, click **Create / Reset Database** button.
8. When DVWA refreshes, re-login with admin account.
9. Try to exploit the vulnerabilities.  

