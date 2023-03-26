# Download Oh My Posh 

1. head to [ohmyposh.dev](ohmyposh.dev)
2. click on get started
3. On the navigation menu select Installation
4. Then select windows (or prefered OS)
5. On the Installation sub category use the winget script provided
6. Then use the winget script for updating to ensure to have the latest version

## To setup The prompt

1. On the navigation menu select Prompt
2. Select the appropiate language (bash, cmd, powershell, etc.)
   * I'll be using powershell
3. First will need to run the following command
    ` notepad $PROFILE `
4. This will prompt to create a file.
   * If an error message appear, its because we are missing something.
   * We need to create a Folder name ` PowerShell ` within the Documents folder.
5. Select yes
6. In the newly created file we are going to add the following line 
   ` oh-my-posh init pwsh | Invoke-Expression ` 
