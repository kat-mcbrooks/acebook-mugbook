const form = document.querySelectorAll('.button_to')
console.log(form)
form.forEach(el => {
    el.addEventListener('submit', event => {
        console.log(event)
        event.preventDefault()
    })
})