//preciso de uma funçao que recebe duas datas e calcula a diferença entre elas em meses 
//e retorna um array com os meses entre elas
//exemplo: 2018-01-01 e 2018-03-01 retorna [1,2,3]

monthDiff = (d1, d2) => {
    let months;
    months = (d2.getFullYear() - d1.getFullYear()) * 12;
    months -= d1.getMonth();
    months += d2.getMonth();
    return months <= 0 ? 0 : months;
}


daysdiff = (d1, d2) => {
    let days;
    days = (d2.getFullYear() - d1.getFullYear()) * 365;
    days -= d1.getMonth();
    days += d2.getMonth();
    return days <= 0 ? 0 : days;
}   

yearsDiff = (d1, d2) => {   
    let years;
    years = (d2.getFullYear() - d1.getFullYear());
    return years <= 0 ? 0 : years;
}
//quero uma funcao que some 3 numeros e diga a media
//exemplo: 1,2,3 retorna 2
//exemplo: 1,2,3,4 retorna 2.5
//exemplo: 1,2 retorna 1.5

media = (n1, n2, n3) => {
    let media = (n1 + n2 + n3) / 3;
    return media;
}

numbersdiff = (n1, n2, n3) => {
    let diff = (n1 + n2 + n3);
    return diff;
}