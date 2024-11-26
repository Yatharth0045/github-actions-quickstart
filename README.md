## Github Actions Sample Repo

Sample branch added 'test-branch'

## Ading commit message as following
```
[skip ci]
[ci skip]
[no ci]
[skip actions]
[actions skip]
```

## adding another commit as follows
```
commit-message


skip-checks:true
## or
skip-checks: true
```

- commit failed
Commit message command to be used
```
git commit --cleanup=verbatim --message '''
This is my commit message


skip-checks:true
'''
```

