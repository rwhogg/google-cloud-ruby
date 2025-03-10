# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require_relative "helper"

describe "#update_cdn_key", :stitcher_snippet do
  it "updates the Akamai CDN key" do
    sample = SampleLoader.load "update_cdn_key.rb"

    refute_nil akamai_cdn_key
    @akamai_cdn_key_created = true

    out, _err = capture_io do
      sample.run project_id: project_id, location: location_id, cdn_key_id: akamai_cdn_key_id, hostname: updated_hostname, gcdn_keyname: nil, gcdn_private_key: nil, akamai_token_key: akamai_token_key
    end

    cdn_key_id_regex = Regexp.escape akamai_cdn_key_id
    assert_match %r{Updated CDN key: projects/\S+/locations/#{location_id}/cdnKeys/#{cdn_key_id_regex}}, out
  end

  it "updates the Cloud CDN key" do
    sample = SampleLoader.load "update_cdn_key.rb"

    refute_nil cloud_cdn_key
    @cloud_cdn_key_created = true

    out, _err = capture_io do
      sample.run project_id: project_id, location: location_id, cdn_key_id: gcdn_cdn_key_id, hostname: updated_hostname, gcdn_keyname: updated_gcdn_key_name, gcdn_private_key: gcdn_private_key, akamai_token_key: nil
    end

    cdn_key_id_regex = Regexp.escape gcdn_cdn_key_id
    assert_match %r{Updated CDN key: projects/\S+/locations/#{location_id}/cdnKeys/#{cdn_key_id_regex}}, out
  end
end
