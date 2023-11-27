const imagenes = document.querySelectorAll('.img-galeria')
const imagenesLight = document.querySelector('.agregar-imagen')
const nombreFotografo = document.querySelector('.nombre-fotografo')
const contenedorLight = document.querySelector('.imagen-light')
const hamburguer1 = document.querySelector('.hamburguer')
const nombres = document.querySelectorAll('.nombre')


const users = [
    {
        name: 'Pepito',
        src: './imgs/productos/allan-feitor-7555343.jpg'
    },
    {
        name: 'Juan',
        src: './'
    },
    {
        name: 'Jose'
    }
]

console.log(users[0].name)
console.log(users[1].name)
console.log(users[2].name)

for(let i=0; i < nombres.length; i++)
{
    console.log(nombres[i].textContent)
}

console.log(imagenes)
console.log(contenedorLight)

imagenes.forEach(imagen => {
    imagen.addEventListener('click', () =>
        aparecerImagen(imagen.getAttribute('src'))
    )
})

contenedorLight.addEventListener('click', (e) => {
    if (e.target !== imagenesLight) {
        contenedorLight.classList.toggle('show')
        imagenesLight.classList.toggle('showImg')
        hamburguer1.style.opacity = '1'
    }
}
)

const aparecerImagen = (imagen) => {
    imagenesLight.src = imagen
    contenedorLight.classList.toggle('show')
    imagenesLight.classList.toggle('showImg')
    hamburguer1.style.opacity = '0'
}