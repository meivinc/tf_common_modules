# tf_common_modules



# Pull Request Title

Please use Conventional Commit format for your PR title, e.g.:

- feat(vpc): add support for private subnets
- fix(s3): fix bucket policy typo
- docs: update README

## Description

<!-- Describe your changes here -->

## Checklist

- [ ] Terraform formatting checked (run `terraform fmt -recursive`)
- [ ] Terraform validation passed
- [ ] Commit message follows Conventional Commits
- [ ] Tests added or updated (if applicable)

---

## Additional Notes

<!-- Optional: any other information -->
| Type         | Description                                                                                      | Example                                         |
| ------------ | ------------------------------------------------------------------------------------------------ | ----------------------------------------------- |
| **feat**     | A new feature                                                                                    | `feat(vpc): add support for private subnets`    |
| **fix**      | A bug fix                                                                                        | `fix(s3): correct bucket policy typo`           |
| **docs**     | Documentation only changes                                                                       | `docs: update README with usage instructions`   |
| **style**    | Changes that do not affect meaning of code (formatting, missing semicolons, white-space)         | `style: fix indentation`                        |
| **refactor** | Code changes that neither fix a bug nor add a feature                                            | `refactor: simplify terraform module variables` |
| **perf**     | Performance improvements                                                                         | `perf: optimize terraform plan time`            |
| **test**     | Adding or correcting tests                                                                       | `test: add unit tests for vpc module`           |
| **chore**    | Changes to the build process or auxiliary tools and libraries                                    | `chore: update terraform provider versions`     |
| **build**    | Changes that affect the build system or external dependencies (example scopes: npm, gradle, etc) | `build: upgrade node version`                   |
| **ci**       | Changes to CI configuration files and scripts                                                    | `ci: add GitHub Actions workflow`               |


Commit message format
php-template
Copy
Edit
<type>(<scope>): <subject>
type — one of the above

scope — optional, indicates the area of the code affected (like a module name)

subject — short description (use imperative mood, e.g., "fix typo", "add feature")

## Examples
- feat(s3): add lifecycle rules for bucket cleanup
- fix(vpc): correct security group ingress rule
- docs: add usage example to README
- chore: bump terraform version to 1.8.0

