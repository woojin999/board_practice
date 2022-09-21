document.getElementById('boardRemove').addEventListener('click', (e) => {
    e.preventDefault();
    const bnoVal = document.getElementById('bnoVal').innerText;
    console.log(bnoVal);
    document.getElementById('bno').value = bnoVal;
    const delForm = document.getElementById('boardRmForm');
    debugger
    delForm.setAttribute('action', '/board/remove');
    delForm.submit();
  });