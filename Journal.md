# Log and Development Process

Day 7: Set up the DevOpsLab path in preparation for a new project involving infrastructure tools.

Day 8: I studied and planned multiple things about what I should implement, and set up a Minikube cluster.

Day 9: Set up Terraform and planned the infrastructure.

Day 10: Made folder changes, prepared Docker and created the main.py file. Tested it using a temporary container.

Day 11: Made folder changes and created my devcontainer to run my developer environment on Docker.

Day 12: Fixed bugs on the devcontainer.

Day 13: Set up my "deployment.yml" file.

Day 14: Made corections to main files and began preparing ArgoCD.

Day 15: Ran into multiple internet issues beyond my control. I took the day to work on local side projects.

Day 16: Switched installation of ArgoCD to be done by Terraform.

Day 17: Chose and set up Jenkins as my CI tool.

Day 18: Fixed bugs and re-initialization problems with Jenkins, making it persistent.

Day 19: Kept fixing unexpected behavior related to the "jenkins-0" pod.

Day 20: Tried multiple solutions to fix the problem with Jenkins not starting. No success.

Day 21: Added and removed multiple things from the Jenkinsfile. No success.

Day 22: Finally managed to solve the Jenkins not initializing problem.

Day 23: Made updates to my Docker account and added a token to be used in Jenkins.

Day 24: Added my credentials, updating the Jenkinsfile to build and push the image.

Day 25: Corrected GitHub token credentials.

Day 26: Was busy with university.

Day 27: Was busy with university.

Day 28: Tested Jenkins by building image, and making further corrections to my Jenkinsfile.

Day 29: Was busy with university paperwork.

Day 30: Tried to build image again on Jenkins UI, but couldn't.

Day 31: Was busy studying my previous project.

Day 1: Was busy with university again.

Day 2: Tested ArgoCD integrated with Jenkins.

Day 3: Tested the whole project to make sure everything is working and began to write the "ReadMe.md" file.

Day 4: Wrote the ReadMe and Journal.md files.

# Key Takes

Learned to develop a robust infrastructure and work with many industry-standard tools for DevOps. Some tools I already knew about (Python, Docker, WSL2), but most of them were new to me. Even though, I managed to develop my ideas well, thanks to the many resources I searched for. Among the many key takes I had, here are some of the main ones, indispensable for future events:

- Learned many templates for files like Jenkinsfile, main.tf, deployment.yml, etc.
- Learned to try different code seeking to do the same thing if it works better.
- Learned to use "setup.sh" files for making people's lives easier when running a project for the first time.
- Learned to not use "docker-compose.yml" for this type of app, because such a file is meant to be run on a single machine. Therefore, if my computer goes down, the entire thing goes down. This situation is literally the exact opposite of what we want, since we are building this precisely to be managed by a whole server, as it eventually scales.


# Credits and References

![]()
---
---
---
![]()

### Links

[...

...]
---
---
---
- I used **Google Gemini** as an auxiliary tool for debugging and code optimization. I also used it in order to understand the many different uses and applications of the chosen tools.

### Gemini Links

- DevOps Learning: https://gemini.google.com/share/107b381ddc10

### AI Use Disclosure

In this project, I learned on practice what it meant to use artificial intelligence as a developing tool. Despite AI helping with many suggestions, if they are not ideal and the developer accepts them and goes deep into them, he might lose control of the "steering wheel".

AI is like that old war veteran that, due to age, might end up "exaggerating" or "changing some things from their respective space-time". For instance, he might start talking about how "Eastern Germany is such a backwards country that goes against democracy and its citizens' freedom", and then you remind him that Germany has unified over 30 years ago only to be met with a "Oh, you are absolutely right!!" followed by him agreeing and talking about other things. He has a lot to teach, but if you want to listen to him, you need either a bit of base knowledge or a safe place to test his suppositions/suggestions, lest you fall victim to a code or integration that simply doesn't work, has vulnerabilities or is too outdated. Good judgement is vital to work with AI.

If the AI doesn't "give you the answer you want", it's practically 100% the way you word it. If you forget something or leave it too vague, the answer might come under-detailed. This is bad for specific/niche problems, but good for those wanting initial suggestions. If you exaggerate on the details, you might get an answer for 5 or 6 kinds of problems when you can barely access one of them. Working with AI taught me optimized ways of formulating questions in order to solve problems.

Let's remember that, despite the many good suggestions I received, in the end I took control and filtered out the ones not to my liking. Here are some of these suggestions (they will probably also be found somewhere within the "Tactical Executions" conversation):

- ...