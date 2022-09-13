async function main() {

  const Voting = await ethers.getContractFactory("Voting");

  //Start  Deployment
  // candidateNames = ['0x00Fc162a2C2331955f07aD9369074450fF27b935'];

  const voting = await Voting.deploy([
    '0x696d70726f76652d64656d6f6372616379000000000000000000000000000000',
    '0x5368617261797500000000000000000000000000000000000000000000000000',
    '0x5368616e74616e75000000000000000000000000000000000000000000000000',
    '0x416e610000000000000000000000000000000000000000000000000000000000'
  ]);
  console.log("Contract Deployed to address: ", voting.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });

  //1. Contract Deployed to address:  0x342d67Fe1D01fcF26aFB7283B7a8346B93C07a81

  //2. Contract Deployed to address:  0x62BdF0D3ee8EfAD869f8443E650Fdf8f9BaeE857