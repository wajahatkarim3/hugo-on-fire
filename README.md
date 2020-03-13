# 🔥 Hugo on Fire
Hugo on Fire is a Github Action which builds a static HTML/CSS site from your Hugo site Github repository and deploys it on the Firebase Hosting.

![Hugo On Fire Flow](https://raw.githubusercontent.com/wajahatkarim3/hugo-on-fire/master/HugoOnFire_Flow.png)

# 💻 Usage
Add a simple example Github Action workflow like this in your Github Hugo site repository at `.github/workflows/main.yml`

```yaml
# This is a simple workflow to build a Hugo site and then deploy it on Firebase Hosting 

name: Set Hugo-On-Fire

# Triggers when any commit is pushed on Master
on:
  push:
    branches: [ master ]

jobs:
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
    # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
    - uses: actions/checkout@v2

    # Fetch Hugo to Firebase docker image
    - uses: wajahatkarim3/Hugo-On-Fire@master
      env:
        FIREBASE_TOKEN: ${{ secrets.FIREBASE_TOKEN }}
```

# 📝 Add Firebase Token as Github Secret 
You also need to add your Firebase Hosting's token as a Github Secret. You can get it using command `'firebase login:ci'` and then set it in Github Secrets as `FIREBASE_TOKEN` variable.
![](https://raw.githubusercontent.com/wajahatkarim3/hugo-on-fire/master/GithubSecrets.png)

# 🎯 Example Site
I have created a simple example Hugo site available at [https://hugotofirebasedemo.web.app/](https://hugotofirebasedemo.web.app/). This site is created with [Hugo Hello Friend ng theme](https://github.com/rhazdon/hugo-theme-hello-friend-ng). You can see the workflow and this action integrated in the demo site repository at [https://github.com/wajahatkarim3/Hugo-On-Fire-Demo](https://github.com/wajahatkarim3/Hugo-On-Fire-Demo). 

## 👨 Developed By
```
Wajahat Karim
```
- Website (http://wajahatkarim.com)
- Twitter (http://twitter.com/wajahatkarim)
- Medium (http://www.medium.com/@wajahatkarim3)
- LinkedIn (http://www.linkedin.com/in/wajahatkarim)

## 👍 How to Contribute
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## 📃 License

    Copyright 2020 Wajahat Karim

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
