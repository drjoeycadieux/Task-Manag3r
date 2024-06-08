-- Task Manager Software in Lua

-- Function to add a task to the task list
local function addTask(tasks, task)
    table.insert(tasks, task)
    print("Task added:", task)
end

-- Function to display all tasks
local function displayTasks(tasks)
    print("Tasks:")
    for i, task in ipairs(tasks) do
        print(i .. ". " .. task)
    end
end

-- Function to remove a task from the list
local function removeTask(tasks, index)
    if index > 0 and index <= #tasks then
        local removedTask = table.remove(tasks, index)
        print("Removed task:", removedTask)
    else
        print("Invalid task index.")
    end
end

-- Main function to run the task manager
local function main()
    local tasks = {} -- Initialize an empty task list

    print("Welcome to Task Manager")

    while true do
        print("\nMenu:")
        print("1. Add Task")
        print("2. Display Tasks")
        print("3. Remove Task")
        print("4. Exit")

        io.write("Enter your choice: ")
        local choice = tonumber(io.read())

        if choice == 1 then
            io.write("Enter task to add: ")
            local task = io.read()
            addTask(tasks, task)
        elseif choice == 2 then
            displayTasks(tasks)
        elseif choice == 3 then
            io.write("Enter index of task to remove: ")
            local index = tonumber(io.read())
            removeTask(tasks, index)
        elseif choice == 4 then
            print("Exiting...")
            break
        else
            print("Invalid choice. Please enter a number between 1 and 4.")
        end
    end
end

-- Run the main function
main()
