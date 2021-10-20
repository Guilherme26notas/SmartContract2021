pragma solidity 0.8.9;


contract compraevenda {
    
    string comprador;
    string vendedor;
    string matricula;
    string cartorio;
    string datadadevencimento;
    bool quitado = false;
    uint public valortotal = 10000;
    uint public valordaentrada;
    uint public valoremaberto;
    uint public valordaparcela;
    uint quantidadedeparcelas = 6;
    uint porcentagemdamulta = 20;
    
    constructor (
        uint _valortotal,
        uint _valordaentrada,
        uint _quantidadedeparcelas,
        string memory _matricula,
        string memory _cartorio
        
        )
        { 
            valortotal = _valortotal;
            valordaentrada = _valordaentrada;
            quantidadedeparcelas = _quantidadedeparcelas;
            matricula = _matricula;
            cartorio = _cartorio;
            valoremaberto = valortotal;
            valordaparcela = valorparcela();
            
        }
    
    function pagarentrada(uint _valorpagamento) public returns(uint, string memory) {
        valordaentrada = _valorpagamento;
        valoremaberto = valortotal - _valorpagamento;
        return(valoremaberto, "valor em aberto");
        
                        }
                        
    function pagarparcela(uint _valordaparcela) public returns(uint, string memory) {
        valoremaberto = valoremaberto - _valordaparcela;
        return(valoremaberto, "valor em aberto");
    }

    function valorparcela() public view returns (uint) {
        uint calculovalorparcela = (valortotal-valordaentrada)/quantidadedeparcelas;
        return(calculovalorparcela);
            }
            
    function valordamulta(uint _porcentagemdamulta) public view returns(uint, string memory) {
        uint multa = _porcentagemdamulta*valortotal/100;
        return(multa, "valor da multa");
        
    }        
            
}

