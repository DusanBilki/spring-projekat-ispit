const table = document.getElementById('study-programme table')
const template = document.getElementById('study-programme')

fetch('http://localhost:8080/api/study-programme')
.then(rsp => rsp.json())
.then(data => {
    data.forEach(smer => {
        const copy = template.content.cloneNode(true)
        copy.querySelector('.id').innerText = smer.id
        copy.querySelector('.name').innerText = smer.name
        copy.querySelector('.created').innerText = formatDate(smer.createdAt)
        copy.querySelector('.updated').innerText = formatDate(smer.updatedAt)
        copy.querySelector('.edit').href = `./edit-study-programme.html?id=${smer.id}`
        copy.querySelector('.remove').addEventListener('click', () =>{
            if(confirm(`Zelite obrisati smer ${smer.name}`)){
                fetch(`http://localhost:8080/api/study-programme/${smer.id}`, {
        method: 'DELETE'
        
    })
        .then(rsp => {
            if (rsp.status == 204) {
                window.location.href = './study-programme.html'
                return
            }

            alert(`Brisanje smera nije uspela (HTTP ${rsp.status})`)
        })
            }

        })
        table.appendChild(copy)
    })
})