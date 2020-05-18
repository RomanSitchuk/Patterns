## State, Adapter and Proxy patterns implementation

Refer to the commits history in order to get a clearer view, because the changes were made step by step (emulating some real scenario). 
ReportStateDemoTest class is emulating client requests. 

## Set Up the Salesforce DX Project

Our first goal is to set up a developer project which we'll use to modify our application. It starts by cloning the repository. Use the command ...

    git clone https://github.com/RomanSitchuk/Patterns.git

… or ...

    git clone git@github.com:forcedotcom/Patterns.git

… to clone the repository. Then, open the directory.

    cd Patterns
    
## Steps

Authorize to your Developer Hub (Dev Hub) org.

    sfdx force:auth:web:login -d -a "Hub Org"

If you already have an authorized Dev Hub, set it as the default:

    sfdx force:config:set defaultdevhubusername=<username|alias>

Create a scratch org.

    sfdx force:org:create -s -f config/project-scratch-def.json

If you want to use an existing scratch org, set it as the default:

    sfdx force:config:set defaultusername=<username|alias>

Push your source.

    sfdx force:source:push

Run your tests.

    sfdx force:apex:test:run
    sfdx force:apex:test:report -i <id>

Open the scratch org.

    sfdx force:org:open --path one/one.app

#