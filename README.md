## Github Actions Sample Repo

Added quickstart action yamls to start github actions

## How to use
1. Make `workflows` directory under `.github`
2. Move the workflow `yml` from `.github/archives` to  `.github/workflows`
3. Commit and push
4. Check github actions for pipeline.

## Github Workflows

1. first_workflow: [`workflow_1.yml`](.github/archives/workflow_1.yml)
    - workflow
    - jobs
    - steps

2. second_workflow: [`workflow_2.yml`](.github/archives/workflow_2.yml)
    - clone the repo
    - read repo files
    - install and run a program (cowsay)

3. third_workflow: [`workflow_3.yml`](.github/archives/workflow_3.yml)
    - run multiple jobs
    - run jobs in parallel  
    ![jobs parallel and sequential](resources/image1.png)
    - job skip if dependent job fails  
    ![job skip](resources/image2.png)

4. fourth_workflow: [`workflow_4.yml`](.github/archives/workflow_4.yml)
    - sharing artifacts among jobs  
    ![storing artifact](resources/image3.png)

5. fifth_workflow: [`workflow_5.yml`](.github/archives/workflow_5.yml)
    - using variables and secrets  
    ![print envs](resources/image4.png)

6. sixth_workflow: [`workflow_6.yml`](.github/archives/workflow_6.yml)
    - workflow trigger options
        - event filters
        - activity types
    - [all-available-options](https://docs.github.com/en/actions/writing-workflows/choosing-when-your-workflow-runs/events-that-trigger-workflows)

7. seventh_workflow: [`workflow_7.yml`](.github/archives/workflow_7.yml)
    - job concurrency
    - configure job timeouts

8. eighth_workflow: [`workflow_8.yml`](.github/archives/workflow_8.yml)
    - matrix configuration
        - include
        - exclude
        - fail-fast
        - max-parallel

9. ninth_workflow: [`workflow_9.yml`](.github/archives/workflow_9.yml)
    - workflow contexts
    - [all-available-contexts](https://docs.github.com/en/enterprise-cloud@latest/actions/writing-workflows/choosing-what-your-workflow-does/accessing-contextual-information-about-workflow-runs)

10. tenth_workflow: [`workflow_10.yml`](.github/archives/workflow_10.yml)
    - if expression

11. To skip ci
```
## Add any message as commit message
[skip ci]
[ci skip]
[no ci]
[skip actions]
[actions skip]
```


```
## Add message as well with skip ci
commit-message


skip-checks:true
## or
skip-checks: true
```

- Commit message command to be used
```
git commit --cleanup=verbatim --message '''
This is my commit message


skip-checks:true
'''
```

