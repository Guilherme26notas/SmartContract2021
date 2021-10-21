pragma solidity 0.8.9;


contract permuta {
    
    string PrimeiroPermutante;
    string SegundoPermutante;
    string public DescricaoPrimeiroImovel;
    string public Cartorio1;
    uint ValorPrimeiroImovel = 10000;
    string public DescricaoSegundoImovel;
    string public Cartorio2;
    uint ValorSegundoImovel = 20000;
    uint ValorReposicao = 10000;
    uint public PorcentagemITBI = 3;
    
    constructor (
        string memory _DescricaoPrimeiroImovel,
        string memory _Cartorio1,
        uint _ValorPrimeiroImovel,
        string memory _DescricaoSegundoImovel,
        string memory _Cartorio2,
        uint _ValorSegundoImovel,
        uint _PorcentagemITBI
        )
       
        { 
            DescricaoPrimeiroImovel = _DescricaoPrimeiroImovel;
            Cartorio1 = _Cartorio1;
            ValorPrimeiroImovel = _ValorPrimeiroImovel;
            DescricaoSegundoImovel = _DescricaoSegundoImovel;
            Cartorio2 = _Cartorio2;
            ValorSegundoImovel = _ValorSegundoImovel;
            PorcentagemITBI = _PorcentagemITBI;
        }
    
        
        function Imovel(uint _ValorReposicao) public view returns(uint, string memory) {
        uint Reposicao = ValorReposicao - ValorSegundoImovel;
        return(Reposicao, "Dos valores");
        }
        
        
        function ITBI(uint _PorcentagemITBI) public returns(uint, string memory) {
        PorcentagemITBI = _PorcentagemITBI*ValorPrimeiroImovel/100;        
        return(ValorPrimeiroImovel, "Valor do ITBI");
        }

}
