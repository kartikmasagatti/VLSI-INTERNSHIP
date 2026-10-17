# Level 3 — Task 1: Automated RTL Verification

This task provides a GitHub Actions workflow that compiles and simulates the Level 1 counter/register example on pushes and pull requests.

## Setup
Copy this `.github/workflows/rtl-verify.yml` into the root of your GitHub repository, and copy the matching `rtl/counter_register.v` and `tb/tb_counter_register.v` files from Level 1 Task 2 into the same repository paths. Then push a commit and inspect the Actions run.

## Deliverables
- Repository URL: add your actual URL after publishing.
- Screenshot: capture a successful Actions run after it has actually executed.
- Artifact: download and retain the log/VCD from the workflow.
Never add tokens or credentials to YAML or source control.
