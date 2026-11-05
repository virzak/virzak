<!-- Profile README for github.com/virzak. The upstream section is rewritten
weekly by .github/workflows/update-upstream.yml; run scripts/update-upstream.sh
to refresh it by hand. -->

### Victor Irzak

.NET developer in Toronto. Most of my work is data access and desktop apps: EF Core, SQL Server, Postgres, WPF and Roslyn source generators. I fix things upstream when I hit them.

Available for .NET and open source work: victor@irzak.com

### Libraries

- [efcore-extensions](https://github.com/zompinc/efcore-extensions): window functions for EF Core on SQL Server, Postgres and SQLite [![NuGet downloads](https://img.shields.io/nuget/dt/Zomp.EFCore.WindowFunctions?label=downloads)](https://www.nuget.org/packages/Zomp.EFCore.WindowFunctions)
- [sync-method-generator](https://github.com/zompinc/sync-method-generator): generates sync versions of async methods [![NuGet downloads](https://img.shields.io/nuget/dt/Zomp.SyncMethodGenerator?label=downloads)](https://www.nuget.org/packages/Zomp.SyncMethodGenerator)
- [sign-universal](https://github.com/zompinc/sign-universal): cross-platform Authenticode signing with Azure Key Vault

### Upstream

<!-- upstream:start -->

72 merged pull requests in projects I don't own. The most recent:

- [podman-container-tools/podman#30109](https://github.com/podman-container-tools/podman/pull/30109): Revert rejected container updates and skip no-op pids updates
- [dotnet/SqlClient#4798](https://github.com/dotnet/SqlClient/pull/4798): Verify the VBS enclave key binding on the async attestation path
- [dotnet/SqlClient#4790](https://github.com/dotnet/SqlClient/pull/4790): Move IdentityModel dependencies to Extensions.Azure
- [mini-software/MiniExcel#1020](https://github.com/mini-software/MiniExcel/pull/1020): Add QueryCells to read cell formulas, font colors and number formats
- [npgsql/efcore.pg#2200](https://github.com/npgsql/efcore.pg/pull/2200): Translate Enumerable.Concat over bytea to ||
- [mini-software/MiniExcel#1028](https://github.com/mini-software/MiniExcel/pull/1028): Avoid per-cell allocations in XmlReaderHelper and TryParseCellReference
- [mini-software/MiniExcel#1023](https://github.com/mini-software/MiniExcel/pull/1023): Cache the column mapping count in CellReferenceConverter
- [mini-software/MiniExcel#1026](https://github.com/mini-software/MiniExcel/pull/1026): Add AGENTS.md
- [velopack/velopack#1018](https://github.com/velopack/velopack/pull/1018): Fix --signTemplate double-escaping every batch after the first on Linux/macOS
- [dotnet/SqlClient#4801](https://github.com/dotnet/SqlClient/pull/4801): Use the source-generated JSON context in HGS MakeRequestAsync

<!-- upstream:end -->

### On the side

OpenWrt and ESP32 projects in Rust, such as [status-light](https://github.com/virzak/status-light) and [luci-types](https://github.com/virzak/luci-types), which also led to fixes in openwrt/luci and esp-rs/espflash.
