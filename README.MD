# Auto Project Initilization
So, intially the script can only be used to initilize the flutter project and is configured to be used for ubuntu systems only.

## How to use
- Clone the repository.
- Then run `chmod u+x deploy.sh` to make it addressable from anywhere.
- Then keep in mind about the syntax thay you need to understand.  
    ```properties
    ./deploy.sh -t project_type -n project_name 
    ```
    - `project_type` refers to the type of project. Currently only flutter is supported.
    - `project_name` refers to the name of the project.
- Example create a flutter project with
    ```properties
    ./deploy.sh -t flutter -n flutter_basics 
    ```



4) At the command line, run chmod u+x YourScriptFileName.sh
I ran chmod u+x deploy.sh to make mine executable.

5) Run it whenever you need!
Now, whenever I deploy changes to my website, I run ./deploy.sh and boom. Done.

