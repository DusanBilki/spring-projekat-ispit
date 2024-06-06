const name = document.getElementById('name')



document.getElementById('save').addEventListener('click', () => {
    
    if (name.value == null || name.value == '') {
        alert('Naziv smera ne sme biti prazno')
        return
    }

    fetch(`http://localhost:8080/api/study-programme` ,{
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    name: name.value,

                })
            })
                .then(rsp => {
                    if (rsp.ok) {
                        window.location.href = './study-programme.html'
                        return
                    }

                    alert(`Dodavanje smera nije uspela (HTTP ${rsp.status})`)
                })
})