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

## 📌 Versioning Strategy (Semantic Versioning + Conventional Commits)

This project follows [Semantic Versioning](https://semver.org) and [Conventional Commits](https://www.conventionalcommits.org) to determine how to bump the version number in the `VERSION` file.

| Type       | Emoji | Description                                      | Example                                | Version bump |
|------------|-------|--------------------------------------------------|----------------------------------------|--------------|
| **feat**   | ✨     | A new feature                                     | `feat(vpc): add private subnet support` | **MINOR**    |
| **fix**    | 🐛     | A bug fix                                         | `fix(s3): correct bucket policy`        | **PATCH**    |
| **perf**   | ⚡     | A performance improvement                         | `perf(route53): reduce plan time`       | **PATCH**    |
| **refactor** | 🧼  | Code refactoring that doesn't fix a bug or add a feature | `refactor: simplify variable logic`   | **PATCH**    |
| **docs**   | 📝     | Documentation changes only                        | `docs: update usage section`            | _None_       |
| **style**  | 🎨     | Code style changes (formatting, no logic change) | `style: fix indentation`                | _None_       |
| **test**   | ✅     | Adding or updating tests                          | `test: add VPC unit tests`              | _None_       |
| **chore**  | 🔧     | Maintenance tasks (deps, configs, etc.)          | `chore: update Terraform version`       | _None_       |
| **ci**     | 🤖     | CI/CD pipeline or workflow changes                | `ci: add format check to PRs`           | _None_       |
| **build**  | 🏗️     | Build-related changes (e.g. package manager, infra) | `build: bump aws provider version`   | _None_       |
| **revert** | ⏪     | Reverts a previous commit                         | `revert: undo breaking change`          | Same as original commit |
| **BREAKING CHANGE** | 💥 | Introduces backward-incompatible changes  | `feat!: drop support for Terraform 0.12` | **MAJOR**    |

---

### 🔺 Which version number to change?

- `MAJOR`: incompatible or breaking API changes (e.g. removing a variable)
- `MINOR`: backward-compatible new features
- `PATCH`: bug fixes or small improvements

The `VERSION` file should follow the format:


**Examples**:
- Breaking change → `1.2.3` → `2.0.0`
- New feature → `1.2.3` → `1.3.0`
- Bug fix → `1.2.3` → `1.2.4`

## ✅ Version bump required?

| Type         | Needs version bump? | When to bump  | Notes                                                                 |
|--------------|----------------------|----------------|-----------------------------------------------------------------------|
| **docs** 📝   | ❌ No                | Never          | Purely documentation (e.g., README, examples)                         |
| **style** 🎨  | ❌ No                | Never          | Formatting, whitespace, no logic change                               |
| **test** ✅   | ❌ No                | Never          | Adding/changing tests only                                            |
| **chore** 🔧  | ❌ Usually No        | Rare           | Only bump if it affects user behavior (e.g., module interface)        |
| **ci** 🤖     | ❌ Usually No        | Rare           | Bump only if CI affects published outputs (e.g., pre-release format)  |
| **build** 🏗️  | ❌ Usually No        | Rare           | Bump only if the build process impacts Terraform behavior             |
| **revert** ⏪ | ✅ Same as original  | Same           | If reverting a `feat`, `fix`, or `BREAKING`, bump accordingly         |


## ✅ Conventional Commit Cheatsheet

| Type      | Emoji | Description                        | Example Command                                             |
|-----------|-------|------------------------------------|-------------------------------------------------------------|
| feat      | ✨     | New feature                        | `git commit -m "feat(vpc): add private subnet support"`     |
| fix       | 🐛     | Bug fix                            | `git commit -m "fix(s3): correct bucket ACL"`               |
| perf      | ⚡     | Performance improvement            | `git commit -m "perf(route53): improve DNS lookup"`         |
| refactor  | 🧼     | Code refactoring                   | `git commit -m "refactor: simplify variable logic"`         |
| docs      | 📝     | Documentation only changes         | `git commit -m "docs: update README usage section"`         |
| style     | 🎨     | Formatting, no code change         | `git commit -m "style(terraform): run terraform fmt"`       |
| test      | ✅     | Adding or updating tests           | `git commit -m "test: add tests for s3 outputs"`            |
| chore     | 🔧     | Build/maintenance tasks            | `git commit -m "chore: update terraform version"`           |
| ci        | 🤖     | CI/CD changes                      | `git commit -m "ci: add check-version workflow"`            |
| build     | 🏗️     | Build-related changes              | `git commit -m "build(terraform): bump provider to 5.x"`    |
| revert    | ⏪     | Revert a previous commit           | `git commit -m "revert: undo S3 public ACL removal"`        |
| feat! / BREAKING | 💥 | Breaking change (MAJOR bump)     | `git commit -m "feat!: remove support for Terraform 0.12"`  |

> 💡 Use `!` after `feat`/`fix` to indicate a breaking change, or add `BREAKING CHANGE:` in the commit body.

