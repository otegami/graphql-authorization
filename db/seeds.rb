users = [
  { id: 1, name: '猫オーナー', role: :project_manager },
  { id: 2, name: '動物園オーナー', role: :chief_project_manager }
]

managings = [
  { id: 1, user_id: 1, project_id: 1 }
]

projects = [
  { id: 1, name: '猫プロジェクト', description: 'プロジェクトマネージャーにアサインされたプロジェクト' },
  { id: 2, name: '犬プロジェクト', description: 'チーフプロジェクトマネージャーのみ見れる極秘プロジェクト' }
]
members = [
  { id: 1, name: 'スコティッシュフォールド', address: '猫小屋一丁目一番地' },
  { id: 2, name: 'アメリカンショートヘア', address: '猫小屋二丁目二番地' },
  { id: 3, name: '柴犬', address: '犬小屋一丁目' }
]
assignings = [
  { id: 1, project_id: 1, member_id: 1 },
  { id: 2, project_id: 1, member_id: 2 },
  { id: 3, project_id: 2, member_id: 3 }
]

ActiveRecord::Base.transaction do
  User.insert_all!(users)
  Project.insert_all!(projects)
  Member.insert_all!(members)
  Managing.insert_all!(managings)
  Assigning.insert_all!(assignings)
end
