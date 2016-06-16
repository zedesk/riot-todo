<todo-list>
    <todo-item each={ item,i in todos } todo={ item }></todo-item>

    <script>
    this.todos = opts.todos;

    observable.on('add', (data) => {
        this.add(data);
    });

    remove(indx) {
        this.todos.splice(indx,1);
        this.update();
    }
    add(todo) {
        console.log(todo);
        this.todos.push(todo);
        this.update()
    }
    </script>
</todo-list>
