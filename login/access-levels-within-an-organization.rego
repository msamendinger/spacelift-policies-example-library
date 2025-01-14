package spacelift

# This login policy gives everyone in the organization access to Spacelift
# and makes all members of the "DevOps" team admins.
#
# You can read more about login policies here:
# https://docs.spacelift.io/concepts/policy/login-policy

admin {
	input.session.teams[_] == "DevOps"
}

allow {
	input.session.member
}

deny {
	not allow
}

# Learn more about sampling policy evaluations here:
# https://docs.spacelift.io/concepts/policy#sampling-policy-inputs
sample = true
