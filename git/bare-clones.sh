# Bare clones can be used to restore/migrate GIT repositories.

# Create a local bare copy of a repository. (snippets in this case)
# This will create a directory called snippets.git, containing the bare version of the repo rather than a working directory.
git clone --bare git@gitea.internal.epichouse.co.uk:dan/snippets.git

# Restore a local bare clone to an existing initialised git repository. (snippets-restored in this case)
# CD into the bare clone before running this command.
git push --mirror git@gitea.internal.epichouse.co.uk:dan/snippets-restored.git