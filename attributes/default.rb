default['jenkins']['server']['plugins']                      = %w{scm-api git git-client github-api github}
default['jenkins']['http_proxy']['server_auth_method']       = 'basic'

default['nginx']['default_site_enabled']   		     = false

default['authorization']['sudo']['include_sudoers_d']        = true

default['pipeline']['chef_server']['url']                    = "CHEF_SERVER_URL"
default['pipeline']['chef_server']['client_key']             = "USER_PEM"
default['pipeline']['chef_server']['validation_client_name'] = "VALIDATOR_NAME"
default['pipeline']['chef_server']['validation_key']         = "VALIDATION_PEM"
default['pipeline']['chef_server']['node_name']              = node['jenkins']['server']['user']


default['pipeline']['berkshelf']['repo_url']                  = "GITHUB_URL_TO_BERKSFILE"
default['pipeline']['berkshelf']['clone_url']                 = "GIT_CLONE_URL_FOR_BERKSFILE"
default['pipeline']['berkshelf']['branch']                    = "*/master"
# use the commands partial from cookbook
default['pipeline']['berkshelf']['command_partial_template']  = "pipeline"
default['pipeline']['berkshelf']['gem_version']               = "2.0.12"


default['pipeline']['spiceweasel']['repo_url']                = "GITHUB_URL_TO_SPICEWEASEL"
default['pipeline']['spiceweasel']['clone_url']               = "GIT_CLONE_URL_FOR_SPICEWEASEL"
default['pipeline']['spiceweasel']['branch']                  = "*/master"
default['pipeline']['spiceweasel']['yml_file']                = "infrastructure.yml"

default['pipeline']['chef-zero']                             = false


default['pipeline']['knife']['plugins']                      = %w[ knife-ec2 ]

default['pipeline']['knife']['providers']                    = [
  { "EXAMPLE_KEY" => "YOUR_KEY" },
  { "EXAMPLE_KEY_ID" => "YOUR_KEY_ID" },
  { "EXAMPLE_SECRET" => "YOUR_AWS_SECRET" }
]
