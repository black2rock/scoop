$pkg = @(
    "vscodevim.vim"
    "github.github-vscode-theme"
    "ms-ceintl.vscode-language-pack-ja"
    "mechatroner.rainbow-csv"
    "eamodio.gitlens"
    "hediet.vscode-drawio"
    "evilz.vscode-reveal"
    "fabiospampinato.vscode-todo-plus"
    "hashicorp.terraform"
    "ms-azuretools.vscode-docker"
    "amazonwebservices.aws-toolkit-vscode"
    "aws-scripting-guy.cform"
    "ms-vscode.go"
    "ms-python.python"
    "ms-vscode.powershell"
 )

 $pkg | ForEach-Object {
     code --install-extension $_
 }

code --list-extensions