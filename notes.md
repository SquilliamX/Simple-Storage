to deploy a Singular Contract while testing on anvil or a testnet:

to deploy a smart contract to a chain, use the following command of:

forge create <filename> --rpc-url http://<endpoint-url> --private-key <privatekey>.

you can get the endpoint url from metamask or from chainlist.org

example:
forge create SimpleStorage --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80.

in the exmaple above, we are deploying to anvil's blockchain with a fake private key from anvil. if you want to run anvil, just run the command "anvil" in your terminal.

**_ HOWEVER WHEN DEPLOYING TO A REAL BLOCKCHAIN, YOU NEVER WANT TO HAVE YOUR PRIVATE KEY IN PLAIN TEXT _**

**_ ALWAYS USE A FAKE PRIVATE KEY FROM ANVIL OR A BURNER ACCOUNT FOR TESTING _**

---

If you have a script, you can run a simulation of deploying to a blockchain with the command in your terminal of `forge script script/<file-name> --rpc-url http://<endpoint-url>`

example:
`forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545`

this will create a broadcast folder, and all deployments will be in your deployment folder in case you want to view any information about your deployment.

to deploy to a testnet or anvil run the command of `forge script script/<file-name> --rpc-url http://<endpoint-url> --broadcast --private-key <private-key>`

example:
`forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80`

**_ HOWEVER WHEN DEPLOYING TO A REAL BLOCKCHAIN, YOU NEVER WANT TO HAVE YOUR PRIVATE KEY IN PLAIN TEXT _**

**_ ALWAYS USE A FAKE PRIVATE KEY FROM ANVIL OR A BURNER ACCOUNT FOR TESTING _**
