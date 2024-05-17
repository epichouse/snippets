# Git Command Examples

# Clone a repository
# The command below will clone the repository specified into a sub-dir of the current directory with the repository name.
git clone git:{server}:{namespace/username}/{repository name}.git

# Mark all non executable .sh files as executable in git repository
git add . --chmod=+x

# Create a local bare copy of a repository. (snippets in this case)
# This will create a directory called snippets.git, containing the bare version of the repo rather than a working directory.
git clone --bare git@gitea.internal.epichouse.co.uk:dan/snippets.git

# Restore a local bare clone to an existing initialised git repository. (snippets-restored in this case)
# CD into the bare clone before running this command.
# This command can be used to restore a repository from my Gitea application files.
git push --mirror git@gitea.internal.epichouse.co.uk:dan/snippets-restored.git