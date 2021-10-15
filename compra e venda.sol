pragma solidity 0.8.9;


contract compraevenda {
    
    string comprador;
    string vendedor;
    string matricula;
    string cartorio;
    string datadadevencimento;
    bool quitado = false;
    uint public valortotal = 1000;
    uint public valordaentrada;
    uint public valoremaberto;
    uint public valordaparcela;
    uint quantidadedeparcelas;
    uint porcentagemdamulta;
    
    function pagarentrada(uint _valorpagamento) public returns(uint, string memory) {
        valordaentrada = _valorpagamento;
        valoremaberto = valortotal - _valorpagamento;
        return(valoremaberto, "valor em aberto");
        
        
        }
    
    
}

