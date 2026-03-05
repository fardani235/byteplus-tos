TEST
# BytePlus TOS with HCP Terraform Stacks

Repo ini sekarang punya konfigurasi Stack:
- `variables.tfcomponent.hcl`
- `providers.tfcomponent.hcl`
- `components.tfcomponent.hcl`
- `deployments.tfdeploy.hcl`

## Yang harus disiapkan di HCP Terraform

1. Buat Variable Set bernama `byteplus-credentials` (category `env`).
2. Tambahkan variable sensitive:
   - `BYTEPLUS_ACCESS_KEY`
   - `BYTEPLUS_SECRET_KEY`
3. Hubungkan Variable Set ke project/stack yang menjalankan deployment.

## Trigger deployment

1. Commit dan push semua perubahan ke branch yang dipantau Stack.
2. Di UI Stack klik `Fetch configuration`.
3. Deployment `default` akan muncul dari file `deployments.tfdeploy.hcl`.
