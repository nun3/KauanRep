function gerarCPF(comPontuacao = false) {
    const randomDigit = () => Math.floor(Math.random() * 10);
    const block = () => randomDigit() + randomDigit() + randomDigit();

    const cpfBlocks = [block(), block(), block()];
    const cpf = cpfBlocks.join('');

    return comPontuacao ? `${cpfBlocks[0]}.${cpfBlocks[1]}.${cpfBlocks[2]}` : cpf;
}

function gerarCNPJ(comPontuacao = false) {
    const randomDigit = () => Math.floor(Math.random() * 10);
    const block = () => randomDigit() + randomDigit() + '.' + randomDigit() + randomDigit() + randomDigit();

    const cnpjBlocks = [block(), block(), block(), '0001'];
    const cnpj = cnpjBlocks.join('');

    return comPontuacao ? `${cnpjBlocks[0]}/${cnpjBlocks[1]}/${cnpjBlocks[2]}-${cnpjBlocks[3]}` : cnpj;
}

export { gerarCPF, gerarCNPJ };