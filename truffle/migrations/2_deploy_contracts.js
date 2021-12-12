var MyContract = artifacts.require("MyContract");
var IdeaNft = artifacts.require("IdeaNft");

module.exports = function(deployer) {
  deployer.deploy(MyContract,'text argument');
  deployer.deploy(IdeaNft);
};