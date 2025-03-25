import "@azure-tools/typespec-azure-core";
import "@typespec/rest";
import "./models.tsp";
import "../shared/routes.tsp";
import "../shared/parameters.tsp";

using Azure.Core;
using TypeSpec.Versioning;

namespace DevCenterService;

interface Projects {
  @summary("Gets a list of Dev Box creations that are pending approval.")
  @doc("Gets a list of Dev Box creations that are pending approval.")
  @added(APIVersions.v2025_04_01_preview)
  listApprovals is StandardResourceOperations.ResourceList<Approval>;
}
