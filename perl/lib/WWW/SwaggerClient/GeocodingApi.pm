=begin comment

GraphHopper Directions API

You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::GeocodingApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::SwaggerClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::SwaggerClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# geocode_get
#
# Execute a Geocoding request
# 
# @param string $key Get your key at graphhopper.com (required)
# @param string $q If you do forward geocoding, then this would be a textual description of the address you are looking for (optional)
# @param string $locale Display the search results for the specified locale. Currently French (fr), English (en), German (de) and Italian (it) are supported. If the locale wasn&#39;t found the default (en) is used. (optional)
# @param int $limit Specify the maximum number of returned results (optional)
# @param boolean $reverse Set to true to do a reverse Geocoding request, see point parameter (optional)
# @param string $point The location bias in the format &#39;latitude,longitude&#39; e.g. point&#x3D;45.93272,11.58803 (optional)
# @param string $provider Can be either, default, nominatim, opencagedata (optional)
{
    my $params = {
    'key' => {
        data_type => 'string',
        description => 'Get your key at graphhopper.com',
        required => '1',
    },
    'q' => {
        data_type => 'string',
        description => 'If you do forward geocoding, then this would be a textual description of the address you are looking for',
        required => '0',
    },
    'locale' => {
        data_type => 'string',
        description => 'Display the search results for the specified locale. Currently French (fr), English (en), German (de) and Italian (it) are supported. If the locale wasn&#39;t found the default (en) is used.',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Specify the maximum number of returned results',
        required => '0',
    },
    'reverse' => {
        data_type => 'boolean',
        description => 'Set to true to do a reverse Geocoding request, see point parameter',
        required => '0',
    },
    'point' => {
        data_type => 'string',
        description => 'The location bias in the format &#39;latitude,longitude&#39; e.g. point&#x3D;45.93272,11.58803',
        required => '0',
    },
    'provider' => {
        data_type => 'string',
        description => 'Can be either, default, nominatim, opencagedata',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'geocode_get' } = { 
    	summary => 'Execute a Geocoding request',
        params => $params,
        returns => 'GeocodingResponse',
        };
}
# @return GeocodingResponse
#
sub geocode_get {
    my ($self, %args) = @_;

    # verify the required parameter 'key' is set
    unless (exists $args{'key'}) {
      croak("Missing the required parameter 'key' when calling geocode_get");
    }

    # parse inputs
    my $_resource_path = '/geocode';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'q'}) {
        $query_params->{'q'} = $self->{api_client}->to_query_value($args{'q'});
    }

    # query params
    if ( exists $args{'locale'}) {
        $query_params->{'locale'} = $self->{api_client}->to_query_value($args{'locale'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'reverse'}) {
        $query_params->{'reverse'} = $self->{api_client}->to_query_value($args{'reverse'});
    }

    # query params
    if ( exists $args{'point'}) {
        $query_params->{'point'} = $self->{api_client}->to_query_value($args{'point'});
    }

    # query params
    if ( exists $args{'provider'}) {
        $query_params->{'provider'} = $self->{api_client}->to_query_value($args{'provider'});
    }

    # query params
    if ( exists $args{'key'}) {
        $query_params->{'key'} = $self->{api_client}->to_query_value($args{'key'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GeocodingResponse', $response);
    return $_response_object;
}

1;
