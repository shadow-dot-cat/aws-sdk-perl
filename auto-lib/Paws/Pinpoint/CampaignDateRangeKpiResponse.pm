package Paws::Pinpoint::CampaignDateRangeKpiResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has CampaignId => (is => 'ro', isa => 'Str', required => 1);
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has KpiName => (is => 'ro', isa => 'Str', required => 1);
  has KpiResult => (is => 'ro', isa => 'Paws::Pinpoint::BaseKpiResult', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CampaignDateRangeKpiResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::CampaignDateRangeKpiResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::CampaignDateRangeKpiResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Provides the results of a query that retrieved the data for a standard
metric that applies to a campaign, and provides information about that
query.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The unique identifier for the application that the metric applies to.


=head2 B<REQUIRED> CampaignId => Str

  The unique identifier for the campaign that the metric applies to.


=head2 B<REQUIRED> EndTime => Str

  The last date and time of the date range that was used to filter the
query results, in extended ISO 8601 format. The date range is
inclusive.


=head2 B<REQUIRED> KpiName => Str

  The name of the metric, also referred to as a I<key performance
indicator (KPI)>, that the data was retrieved for. This value describes
the associated metric and consists of two or more terms, which are
comprised of lowercase alphanumeric characters, separated by a hyphen.
For a list of possible values, see the Amazon Pinpoint Developer Guide
(https://docs.aws.amazon.com/pinpoint/latest/developerguide/welcome.html).


=head2 B<REQUIRED> KpiResult => L<Paws::Pinpoint::BaseKpiResult>

  An array of objects that contains the results of the query. Each object
contains the value for the metric and metadata about that value.


=head2 NextToken => Str

  The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null for the Campaign
Metrics resource because the resource returns all results in a single
page.


=head2 B<REQUIRED> StartTime => Str

  The first date and time of the date range that was used to filter the
query results, in extended ISO 8601 format. The date range is
inclusive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
