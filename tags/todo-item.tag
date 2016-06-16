<todo-item>
    <div class={ done:todo.status}>{ opts.todo.title }</div>
    <button onclick={ done } class="success">✔️</button>
    <button onclick={ remove } class="danger">✖️</button>

    <style scoped>
    :scope {
        display: flex;
        flex-direction: row;
        height: 30px;
        border:1px solid lightgray;
    }
    div {
        flex:1;
        align-self: center;
        padding:0px 10px
    }

    .done {
        text-decoration: line-through;
        color:lightgray;
    }

    </style>

    <script>
    this.todo = opts.todo;
    console.log('->',opts);

    done(event) {
        this.todo.status = !this.todo.status ;
        this.update();
    }

    remove(event) {
        console.log(event.item);
        this.parent.remove(event.item.i);
    }
    </script>
</todo-item>
