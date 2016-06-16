<todo-form>
    <form onsubmit="return false;">
        <input type="text" placeholder="Your next todo ..." name="todo" autofocus autocomplete="off">
        <button onclick={ newTodo }>save</button>
    </form>

    <style scoped>
    :scope {
        display:flex;
        margin:10px 0px;

    }
    form {
        flex:1;
        align-self: center;
        display:flex;
        height:30px;
    }
    input { flex:1; padding:0px 10px; }
    </style>
    <script>
        newTodo(event) {
            if( this.todo.value) {
                opts.observable.trigger('add', { title: this.todo.value, status:false });
                this.todo.value = '';
                this.update();
            }
        }
    </script>
</todo-form>
