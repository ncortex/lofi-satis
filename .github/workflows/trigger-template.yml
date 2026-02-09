# Template: Add this step to the release.yml of each package repo
# to trigger Satis rebuild after a new release.
#
# In each package's .github/workflows/release.yml, add after the release step:
#
#     - name: Trigger Satis rebuild
#       uses: peter-evans/repository-dispatch@v3
#       with:
#         token: ${{ secrets.SATIS_DISPATCH_TOKEN }}
#         repository: ncortex/lofi-satis
#         event-type: package-released
#
# The SATIS_DISPATCH_TOKEN needs to be a PAT with repo scope,
# added as a secret in each package repo (or as an org-level secret).
