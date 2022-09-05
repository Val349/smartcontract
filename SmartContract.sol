pragma solidity ^0.8.4;

contract SmartContract{


struct Produit{
        uint idProduit;
        string NomProduit;
        uint Prix;
    }
struct Achat
    {
        uint idProduit;
        uint quantite;
    }

constructor(){
vendeur = msg.sender;
}

    uint vendeur;
    uint acheteur;
    uint balance;


 mapping (uint => address) public acheteurTovendeur;
 mapping (address => uint) balances;

 

 function achat(uint _acheteur, uint _vendeur, uint _balances, uint amount) public returns (string memory) {
    require(balances(_acheteur) >= Produit.Prix);
    return "balances too low";

 if (amount > balances[msg.sender]){
            revert ({
                requested: amount,
                available: balances[msg.sender]
            });

        balances[acheteur] -= amount;
        balances[vendeur] += amount;
       // emit Sent(acheteur, vendeur, amount);
        //return "Transaction made";
 }

   // return "Transaction made";

}}
